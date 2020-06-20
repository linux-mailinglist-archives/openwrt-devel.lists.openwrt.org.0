Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FDA2024E8
	for <lists+openwrt-devel@lfdr.de>; Sat, 20 Jun 2020 17:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RCeR57D1R/H5vzF9Pc+alNUhhod5p8fLnRUGvVwkI1s=; b=exEton2gsh88x9
	RdRhCGCcCh4T8fMbR8nX9kFPis0qij3c0rClFvJawEiDBFh0EfO3AhEt+2FLItqF1Wqq81Y1ykhle
	NGvrz7FhtSDs4uZTTyJbf/zuf+KpfUN27DFb79omKt8YrBBXrcPNRxn4cc8Kaos8tOJRYq9yHN7J0
	naL1z8XEyNVTDFw1HfTqdNUJIgIx+ZWvtOUY5sBmdcKY6001VbERqv5H1pbeqmgFdafJF93I551eA
	UlfBYgaGJlMnVQyhiuYftMomTGKKkxrSuqQs4mHbkLD4wTvTzMQnqVd1edhHe7BDl2pFgsMAHIoS6
	iqRv/zXQHBLCqljst6Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmfgP-0001N4-SF; Sat, 20 Jun 2020 15:45:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmfgI-0001ME-JL
 for openwrt-devel@lists.openwrt.org; Sat, 20 Jun 2020 15:45:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id z13so674082wrw.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 20 Jun 2020 08:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6yWDlei3dPM6+DAfiGKqkc6CpygwykXKQtqlHDTIuFE=;
 b=FBk4Oo6vuk/yBSZCUP7lTHVH0GYd0JZCWQa7qPz6yhGNr/HLEsO/RluivE1A+Aip0p
 IfPx3n9fc/5OybB7Q74gi7W+vxQ5J4zWdzzRZwyM7iFe6Kbj0LlTQXArXCyjvvUKwU4A
 8fNslDkTBAtRjRXPvq1M/RYZ1t0m1QZWzdwM/2/uvxNw5XfCWST6yAvmJwDpyAUMxHgz
 rRFpzGa74Q8umkAMGCsV0xtn9vEldiEh73Jqu3FiVmKL5pXsUtzLk7JTa/TjKhHq9a3L
 +M+aMjC8APlzt7hmKXpTWhQCpMINKReIgMaAh/psG/1U5P6BFz40H2LvAN+JuzJH4loi
 Tpjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6yWDlei3dPM6+DAfiGKqkc6CpygwykXKQtqlHDTIuFE=;
 b=ASLYeerZE0101hI8Vp+0w5gymV1uyMU4KhdMTZFz+4uM3aUUNTN4/2CG08zh2NrKLe
 q+LzquqSOJSIFkE/CFLwsqKFTaqmv5jmhTNI7Eq7au0veQ3UMC04FekPFrjnEb8gaMAA
 sAGtbS+wwZS15ZsVeIe0j8wUbO+6fPj6YM8WUj3STBsOb4nbigo4wtOW2Z/1ObBt0k5S
 LAwT/cLFyAaW3AIByQ+uXK8f+lyC0DqYrYQjYeRY9ErYC4sRxuoXFTy1ORcRHJV9T1o3
 d/5Ov9vCWKPfLh7xew6jNGSN2PR5EezuApNb1UCI8Z+Xu7sLo7HjgGs60LWHOwkwGvb5
 bYDg==
X-Gm-Message-State: AOAM530mMBCJB+d339S4AYAsXkqf1i5xzhJ9a9ZzbYwlIK9HPSs5EQn1
 plpLAdcW9oylC6llE1njCZSUvdAf
X-Google-Smtp-Source: ABdhPJyl+FjE5ZXN6Nwlklr44OMvqYwKW094/rUh+OhBJaZe0kdZVXX3hQh++iwwHR7w5IqjgC2dig==
X-Received: by 2002:adf:d0d0:: with SMTP id z16mr9916418wrh.308.1592667918593; 
 Sat, 20 Jun 2020 08:45:18 -0700 (PDT)
Received: from tool.localnet ([213.177.196.114])
 by smtp.googlemail.com with ESMTPSA id f186sm1211756wmf.29.2020.06.20.08.45.16
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 08:45:17 -0700 (PDT)
From: Daniel =?ISO-8859-1?Q?Gonz=E1lez?= Cabanelas <dgcbueu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 20 Jun 2020 17:44:42 +0200
Message-ID: <5538389.BsCHd0DPA3@tool>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_084522_653174_84D669E4 
X-CRM114-Status: UNSURE (   5.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dgcbueu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] bcm63xx: AV4202N: add missing PCI pinmux
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhlIEFEQiBQLkRHIEFWNDIwMk4gZGV2aWNlIGhhcyBhIHdpZmkgY2hpcHNldCBjb25uZWN0ZWQg
dmlhIFBDSS4gQnV0IHRoZQpQQ0kgcGlubXV4IGlzIG1pc3NpbmcgYW5kIHdpdGhvdXQgaXQgdGhl
IHdpZmkgd29uJ3Qgd29yayBwcm9wZXJseS4KCkFkZCB0aGUgcGluY3RybF9wY2kgdG8gZW5hYmxl
IHRoZSBtaXNzaW5nIFBDSSBwaW5zIGZvciB0aGlzIGRldmljZS4KClNpZ25lZC1vZmYtYnk6IERh
bmllbCBHb256w6FsZXogQ2FiYW5lbGFzIDxkZ2NidWV1QGdtYWlsLmNvbT4KLS0tCiB0YXJnZXQv
bGludXgvYmNtNjN4eC9kdHMvYmNtNjM2OC1hZGItYXY0MjAybi5kdHMgfCA1ICsrKysrCiAxIGZp
bGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2Jj
bTYzeHgvZHRzL2JjbTYzNjgtYWRiLWF2NDIwMm4uZHRzIGIvdGFyZ2V0L2xpbnV4L2JjbTYzeHgv
ZHRzL2JjbTYzNjgtYWRiLWF2NDIwMm4uZHRzCmluZGV4IDk1Zjk4YzE4N2QuLjhlMDY5ODVmZGQg
MTAwNjQ0Ci0tLSBhL3RhcmdldC9saW51eC9iY202M3h4L2R0cy9iY202MzY4LWFkYi1hdjQyMDJu
LmR0cworKysgYi90YXJnZXQvbGludXgvYmNtNjN4eC9kdHMvYmNtNjM2OC1hZGItYXY0MjAybi5k
dHMKQEAgLTEwNCw2ICsxMDQsMTEgQEAKIAl9OwogfTsKIAorJnBpbmN0cmwgeworCXBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7CisJcGluY3RybC0wID0gPCZwaW5jdHJsX3BjaT47Cit9OworCiAm
dWFydDAgewogCXN0YXR1cyA9ICJva2F5IjsKIH07Ci0tIAoyLjI3LjAKCgoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxp
bmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3Bl
bndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
