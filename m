Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19196B941
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jul 2019 11:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPQF4qjyi3uTQ0OicOuFkd5MetqG4bSlg60k2BCND4U=; b=FWKKreaxm0OnPX
	fQT8xtw8AAzGu1o7GLnjSGXfv57qI5F2L/46gQEOhzexprkwgCdCsWSM2smmyfd7jGMbNu0iwflKC
	NB6GQ7iuQ+hwPnv08LJJiv9y5PgV6Fxj8CzBkxhZsy2NWnR4VqloP0V8QSq8Ol3ACvDZ9rfmJOu6+
	h+vh5Ij4200xvVktpENPDu5ITROlCEyva4p8TTVuCdpUitpuSjO3NJc7Vg9Kh7I0cX76NK6u69J4y
	f0sJwwbAh4GS55J2oP/dbIUQMTecMnacZX9bz+ZFNlfedkUI2iREfD1sMcdyKToYS+wjAh2qygdj9
	B9TxlcumBux6VlQ/FDMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hngJr-000207-Pv; Wed, 17 Jul 2019 09:33:52 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hngJB-0001go-UY
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jul 2019 09:33:12 +0000
Received: by mail-lf1-x133.google.com with SMTP id u10so15901944lfm.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jul 2019 02:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rz1DFHfEtIMXwWLf2jGJi47XR98aH/qks0p4duKHnwE=;
 b=VWsf/efoGT/tKoxkpklkDaU+x7Gu+NZafz1CCaOfwCd5aD0f8ykSfURYEZx3aNIVqH
 3qy+d4khvQGJWscgEmPxPcHDOUtzjpXyKZLbv+Rsji1MomdY08cPA7iK+T4PUN6w1bzm
 RRa1pPmer7Q6S7riXAXUj+5gplp3vAeEY1ID2N7FDutzdKGN8tu/aO4BbcC7BbPwl5Fx
 fZnuo0Aqb6sN6XP/TxdiT/jk0+OfD9y7X+9dtvFW8ok0vME5T04KrjrANR7TFFLMHXgH
 J7dwN32jP7TJdPhMC5jUljOSooL9Cb5MCa2HpDZEBrdlZOz68QQlB2e6wm1YnyOh7hec
 Wmsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rz1DFHfEtIMXwWLf2jGJi47XR98aH/qks0p4duKHnwE=;
 b=QPBwwB4EFIOs0QqQiT6Oc1f9+u/FwPTKAD9ETSuZt9mpuniwJ1w7NYNu21eFztwkAQ
 QDL1BNAnnMt9QkYsCUuWLGQ2QZaDo1dapwC0QS4dJp6iCYWNUxPPO6z7c99WJN/EHBKc
 7w8NHudlkPoA4g8FEVO2cZLWUHLPkY6ex+MH96T8IXASwc4+XkZvYvBtCvURz9Y1hGVi
 GN50UNyM5pi2Z9kIQeHkDyrMb4ls0mw/6Lw6GcXq/YsIwW2b95RhuEm1ojHoE3fKLsPn
 ncraP637L0kAkR/Ft6fpWRPETGNadniVjN/VCHh9I21ctbcTCAKCpot1btNXzh1ZoLzW
 Vq2w==
X-Gm-Message-State: APjAAAVg0JtbBYDufpzxSsdHsDLiWkku9ndt0dTqqA0gK8S2K4TyHh3l
 FbTyTEfZoTSXmILmCo+RhEOyBNxN
X-Google-Smtp-Source: APXvYqyRgkGJ7lP9wx0jKC0h3TtCmJ7E+1iwLoDGp+TeAeSbDLQIJhADsH4QDS/VDcuDpVkM29S2DQ==
X-Received: by 2002:a19:914c:: with SMTP id y12mr17377563lfj.108.1563355987298; 
 Wed, 17 Jul 2019 02:33:07 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id r17sm4373555ljc.85.2019.07.17.02.33.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 02:33:06 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 17 Jul 2019 11:32:55 +0200
Message-Id: <20190717093255.26245-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190717093255.26245-1-zajec5@gmail.com>
References: <20190717093255.26245-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_023310_155813_B056AABD 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:133 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 2/2] base-files: drop support for the
 platform_nand_pre_upgrade()
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKTm8gdGFyZ2V0IHVzZXMg
aXQgYW55bW9yZS4gQWxsIGNvZGUgZnJvbSB0aGF0IGNhbGxiYWNrIHdhcyBtb3ZlZCBpbnRvCnRo
ZSBwbGF0Zm9ybV9kb191cGdyYWRlKCkuCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kg
PHJhZmFsQG1pbGVja2kucGw+Ci0tLQogcGFja2FnZS9iYXNlLWZpbGVzL01ha2VmaWxlICAgICAg
ICAgICAgICAgICAgfCAyICstCiBwYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUv
bmFuZC5zaCB8IDQgLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNSBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9wYWNrYWdlL2Jhc2UtZmlsZXMvTWFrZWZpbGUgYi9wYWNr
YWdlL2Jhc2UtZmlsZXMvTWFrZWZpbGUKaW5kZXggN2M2M2QzZWY0NC4uNDkyNTRhMzY4MCAxMDA2
NDQKLS0tIGEvcGFja2FnZS9iYXNlLWZpbGVzL01ha2VmaWxlCisrKyBiL3BhY2thZ2UvYmFzZS1m
aWxlcy9NYWtlZmlsZQpAQCAtMTIsNyArMTIsNyBAQCBpbmNsdWRlICQoSU5DTFVERV9ESVIpL3Zl
cnNpb24ubWsKIGluY2x1ZGUgJChJTkNMVURFX0RJUikvZmVlZHMubWsKIAogUEtHX05BTUU6PWJh
c2UtZmlsZXMKLVBLR19SRUxFQVNFOj0yMDQKK1BLR19SRUxFQVNFOj0yMDUKIFBLR19GTEFHUzo9
bm9uc2hhcmVkCiAKIFBLR19GSUxFX0RFUEVORFM6PSQoUExBVEZPUk1fRElSKS8gJChHRU5FUklD
X1BMQVRGT1JNX0RJUikvYmFzZS1maWxlcy8KZGlmZiAtLWdpdCBhL3BhY2thZ2UvYmFzZS1maWxl
cy9maWxlcy9saWIvdXBncmFkZS9uYW5kLnNoIGIvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xp
Yi91cGdyYWRlL25hbmQuc2gKaW5kZXggOWYyNThhODJjNS4uZmJjMmI1YzE5YSAxMDA2NDQKLS0t
IGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRlL25hbmQuc2gKKysrIGIvcGFj
a2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRlL25hbmQuc2gKQEAgLTI4MiwxMCArMjgy
LDYgQEAgbmFuZF91cGdyYWRlX3RhcigpIHsKIG5hbmRfZG9fdXBncmFkZSgpIHsKIAlsb2NhbCBm
aWxlX3R5cGU9JChpZGVudGlmeSAkMSkKIAotCWlmIHR5cGUgJ3BsYXRmb3JtX25hbmRfcHJlX3Vw
Z3JhZGUnID4vZGV2L251bGwgMj4vZGV2L251bGw7IHRoZW4KLQkJcGxhdGZvcm1fbmFuZF9wcmVf
dXBncmFkZSAiJDEiCi0JZmkKLQogCVsgISAiJChmaW5kX210ZF9pbmRleCAiJENJX1VCSVBBUlQi
KSIgXSAmJiBDSV9VQklQQVJUPSJyb290ZnMiCiAKIAljYXNlICIkZmlsZV90eXBlIiBpbgotLSAK
Mi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
