Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 020231FA44
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 20:56:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Su3JMXkHdrSpmsOLRt+VYWkNLADTEP+yzEOgPxv22+0=; b=Qx6uPH7uUNCq7X
	4GTmu6fEN0NByLMsqgM0+komYRJRcTzE5KpTSvj9PTtnIkYLovMLQD8aOGwdfJ0OXn2ez1TEH4U3j
	JRMhHuy4OO4787K+6d4et5+Uz6tw6z6/KYoqM4unMFPfLEwW3lChv3YbquZrDsJo43z8k+AHpCORv
	t/zFPlD1tLi5ILJhdC67Z+vt+h7ZcDhQZKS7o5jylDGEPsG/tRVfvUYw5CA/jLizyOKsUyzt/zOeq
	0o9EsiF0WceJpbVzfMgGa0+QOGEoHYURUvanUuGFo9lVbGjDqRzJ8MFHRkocdjAkXgG4JDjR7RJwJ
	a+9+wiXe9GRQxl3CwJrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQz4p-0006qb-K5; Wed, 15 May 2019 18:56:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQz4h-0006iF-2v
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 18:56:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id s17so667317wru.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 May 2019 11:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zTrdb4YM8rj2bxHcm5aBVGmSFMDbHJyBzse2qg7bYrM=;
 b=ekGg2gM6FKfihj7koTiWmrMtX+E5aLZd8Z9Mhc/i+ROCi6mH+m4iQxXRpGdjPjMCcl
 suGYtj/pP1+fvPh0KHRXdA9YVT6A6+1UA+x0XyqQkDRrBJr46UYcvONJDeFwG4yQpq8D
 GKa1qvJ/jcHaV9xgJY1BzzIhlVZ7CB2c2FtlhAIyNnK9K9mB9jbPun00G8F6kBVFxYUp
 sglCox4o+o2l21sucCZmfRrNQbUsjIe/TqL2UATfbDOrEXEV4sFhyhm7RBk1a3+g1PaD
 iMno6SYThtID/IZk8a929kbZs9HMxbQz91rwUOTDkazEp8iaeLX4ZyptJc53Vm0w2J2w
 VPqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zTrdb4YM8rj2bxHcm5aBVGmSFMDbHJyBzse2qg7bYrM=;
 b=f3+Lg2t1OAlnJ3J8d1acte6jPOItDutZEaUyeCQhQnNGQK/WNirTmmPZr/IePR+dB5
 qFK3fEQ+vLJUQB24Hy60DcV8ajtfirxKcdQI37MMyDVvAWVjal2kxe3PzHYuWqhzrDIv
 cBhulPW9H2mT+RXAeLTDy8TxIqM+7MZT8lhSBNQ25H9UBXmqz1UPMRtWROhG+jL3xb6T
 BV/YA2Z81lNZzNK4nejvN8nf9NXsRjr370etAegqcvVoYihuPRv+bRyIuEU78RiwXCEP
 2G4sbOLBHhwTxOp6gKRvhrzRYL+tlWMg3L4BXxp9zPgRJhmOrMC3ouItf9uKvfb7W81q
 +LeA==
X-Gm-Message-State: APjAAAWdHrNzPj1EVGJVr2kCMwMoa0SGvUwgcO8kXk1pE25CzVCW2yaz
 GLYFfefspAG5lJA4TV87f/rpyBag
X-Google-Smtp-Source: APXvYqzh/rl7WOhubuFpXJ2uq30GwXEVXIwlMmZ4NiT6atuLo2FftxhYm6FruEnEWwM2b7MfZqNPXQ==
X-Received: by 2002:adf:f407:: with SMTP id g7mr10709722wro.196.1557946581259; 
 Wed, 15 May 2019 11:56:21 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id j46sm5655526wre.54.2019.05.15.11.56.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 11:56:20 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 15 May 2019 20:56:18 +0200
Message-Id: <20190515185618.23454-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_115623_129933_2C61322A 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] system: uci: Use config dir on uci_add
 and support add_/del_list
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
Cc: Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyBjb21taXQgbWFrZXMgdGhyZWUgY2hhbmdlcyB0byB0aGUgdWNpIHNoZWxsIGxpYnJhcnk6
CgoqIEEgY2hlY2sgZm9yIFVDSV9DT05GSUdfRElSIGhhcyBiZWVuIGFkZGVkIHRvIHRoZSBjb21t
YW5kIGxpbmUgd2hlbgphZGRpbmcgYW5vbnltb3VzIHNlY3Rpb25zLiBXaXRob3V0wqB0aGlzIGNo
YW5nZSwgYWRkaW5nIGFub255bW91cwpzZWN0aW9ucyB0byBjb25maWdzIG5vdCBzdG9yZWQgaW4g
L2V0Yy9jb25maWcgaXMgbm90IHBvc3NpYmxlLgoKKiBTdXBwb3J0IGZvciBhZGRpbmcvcmVtb3Zp
bmcgaXRlbXMgZnJvbSBsaXN0cyB3ZXJlIG1pc3NpbmcsIHNvIEkgaGF2ZQphZGRlZCB0aGUgZnVu
Y3Rpb25zIHVjaV9hZGRfbGlzdCgpIGFuZCB1Y2lfcmVtb3ZlX2xpc3QoKSB0byBzaW1wbGlmeQp3
b3JraW5nIHdpdGggdWNpIGxpc3RzIGZyb20gc2NyaXB0cy4KClNpZ25lZC1vZmYtYnk7IEtyaXN0
aWFuIEV2ZW5zZW4gPGtyaXN0aWFuLmV2ZW5zZW5AZ21haWwuY29tPgoKLS0tCnYxLT52MjoKKiBS
ZW5hbWUgdWNpX2RlbF9saXN0KCkgdG8gdWNpX3JlbW92ZV9saXN0KCkgaW4gb3JkZXIgdG8gYmUg
Y29uc2lzdGVudAp3aXRoIHVjaV9yZW1vdmUoKSAodGhhbmtzIFBldHIgxaB0ZXRpYXIpLgotLS0K
IHBhY2thZ2Uvc3lzdGVtL3VjaS9maWxlcy9saWIvY29uZmlnL3VjaS5zaCB8IDIwICsrKysrKysr
KysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL3BhY2thZ2Uvc3lzdGVtL3VjaS9maWxlcy9saWIvY29uZmlnL3Vj
aS5zaCBiL3BhY2thZ2Uvc3lzdGVtL3VjaS9maWxlcy9saWIvY29uZmlnL3VjaS5zaAppbmRleCA3
OGVjMjc3NjY5Li4xZTg1Y2VkODM0IDEwMDY0NAotLS0gYS9wYWNrYWdlL3N5c3RlbS91Y2kvZmls
ZXMvbGliL2NvbmZpZy91Y2kuc2gKKysrIGIvcGFja2FnZS9zeXN0ZW0vdWNpL2ZpbGVzL2xpYi9j
b25maWcvdWNpLnNoCkBAIC04NSw2ICs4NSwxNSBAQCB1Y2lfc2V0KCkgewogCS9zYmluL3VjaSAk
e1VDSV9DT05GSUdfRElSOistYyAkVUNJX0NPTkZJR19ESVJ9IHNldCAiJFBBQ0tBR0UuJENPTkZJ
Ry4kT1BUSU9OPSRWQUxVRSIKIH0KIAordWNpX2FkZF9saXN0KCkgeworCWxvY2FsIFBBQ0tBR0U9
IiQxIgorCWxvY2FsIENPTkZJRz0iJDIiCisJbG9jYWwgT1BUSU9OPSIkMyIKKwlsb2NhbCBWQUxV
RT0iJDQiCisKKwkvc2Jpbi91Y2kgJHtVQ0lfQ09ORklHX0RJUjorLWMgJFVDSV9DT05GSUdfRElS
fSBhZGRfbGlzdCAiJFBBQ0tBR0UuJENPTkZJRy4kT1BUSU9OPSRWQUxVRSIKK30KKwogdWNpX2dl
dF9zdGF0ZSgpIHsKIAl1Y2lfZ2V0ICIkMSIgIiQyIiAiJDMiICIkNCIgIi92YXIvc3RhdGUiCiB9
CkBAIC0xMDgsNyArMTE3LDcgQEAgdWNpX2FkZCgpIHsKIAlsb2NhbCBDT05GSUc9IiQzIgogCiAJ
aWYgWyAteiAiJENPTkZJRyIgXTsgdGhlbgotCQlleHBvcnQgJHtOT19FWFBPUlQ6Ky1ufSBDT05G
SUdfU0VDVElPTj0iJCgvc2Jpbi91Y2kgYWRkICIkUEFDS0FHRSIgIiRUWVBFIikiCisJCWV4cG9y
dCAke05PX0VYUE9SVDorLW59IENPTkZJR19TRUNUSU9OPSIkKC9zYmluL3VjaSAke1VDSV9DT05G
SUdfRElSOistYyAkVUNJX0NPTkZJR19ESVJ9IGFkZCAiJFBBQ0tBR0UiICIkVFlQRSIpIgogCWVs
c2UKIAkJL3NiaW4vdWNpICR7VUNJX0NPTkZJR19ESVI6Ky1jICRVQ0lfQ09ORklHX0RJUn0gc2V0
ICIkUEFDS0FHRS4kQ09ORklHPSRUWVBFIgogCQlleHBvcnQgJHtOT19FWFBPUlQ6Ky1ufSBDT05G
SUdfU0VDVElPTj0iJENPTkZJRyIKQEAgLTEzMiw2ICsxNDEsMTUgQEAgdWNpX3JlbW92ZSgpIHsK
IAkvc2Jpbi91Y2kgJHtVQ0lfQ09ORklHX0RJUjorLWMgJFVDSV9DT05GSUdfRElSfSBkZWwgIiRQ
QUNLQUdFLiRDT05GSUcke09QVElPTjorLiRPUFRJT059IgogfQogCit1Y2lfcmVtb3ZlX2xpc3Qo
KSB7CisJbG9jYWwgUEFDS0FHRT0iJDEiCisJbG9jYWwgQ09ORklHPSIkMiIKKwlsb2NhbCBPUFRJ
T049IiQzIgorCWxvY2FsIFZBTFVFPSIkNCIKKworCS9zYmluL3VjaSAke1VDSV9DT05GSUdfRElS
OistYyAkVUNJX0NPTkZJR19ESVJ9IGRlbF9saXN0ICIkUEFDS0FHRS4kQ09ORklHLiRPUFRJT049
JFZBTFVFIgorfQorCiB1Y2lfY29tbWl0KCkgewogCWxvY2FsIFBBQ0tBR0U9IiQxIgogCS9zYmlu
L3VjaSAke1VDSV9DT05GSUdfRElSOistYyAkVUNJX0NPTkZJR19ESVJ9IGNvbW1pdCAkUEFDS0FH
RQotLSAKMi4xOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVu
d3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Blbndy
dC1kZXZlbAo=
