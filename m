Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9E5165DB5
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 13:41:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uKGDh1QdSurB/rVQbWj+vmQw0yD9g3OYUf7d7l+dByA=; b=ag7j8cmKwDfc9N
	H5aCARMSnnoiuOxWasAP4FL4IrShxUES9qB8ilguOAnzrCXO7IjOmafRMa/oq4IYkTLDOp+vTFEO5
	HSEC5R5mnqff/JoMyqlIlCK7UxTBpGysO+t3OPt/FQ28lIGtpXlgaEeTrOGYbT0nrLenGBs8m0DcH
	a6DRG2TvYbQNBmCKP13ABM3BzCBV6oMrqSZsiDybf1zk5JVP0XkguatoS3fuHptkR3JYlt593Wt9X
	rn69t3gs/v0/7dSS/37sy/stAsRt8hYBPoVyY7WHvJL7nWN6d2FpAvHs7Augx1swbdkFiegrRG1NT
	dZrj3L+W9ComWwYwLE2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4l8o-0007Wf-GJ; Thu, 20 Feb 2020 12:41:18 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4l8e-0007UJ-9D
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 12:41:09 +0000
Received: by mail-lj1-x232.google.com with SMTP id e18so4015665ljn.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Feb 2020 04:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BbkSvJysy2AzQsBonos8JuHG33YC44k1DXCq/7q9acE=;
 b=FxpvgvZy58n+O7lamBGs73PW/UfjUvaB/clM62VPi1qPnE8ME8V6GY0hjtVyhZUWhe
 if6D497cNOUKsafxChwj1BhSYdYh2C0W10kTMzEDRN9unlzhPlpHKYj0ipVsirfsNx7x
 sql+fuYN49Kz4pICEeNQZWgFw8xoKnVtym7wNCTns7R5tPby+ZaOPdasd6rIk7o29G8x
 wdsJ+/G3sdT7jD80meSIgtFyWqWxof/ND4Wc5pAhAHM5UGOUk3alM8DD73YCVpc8pYl/
 faUfBw0+NMLbbITcRjMTxJkTDY2QUYxDgBYuigLRxOvovKmV67hYDdBptSXM6ZLMYCFL
 szTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BbkSvJysy2AzQsBonos8JuHG33YC44k1DXCq/7q9acE=;
 b=G/2afXZiYNkQBHHs8l/LXfYQhihPW/8AJcDaEPThIevtB9LZht3bYHHv8xu0XquBNt
 srrw6DF+E3BneLFCDaRxGUpZVEYy8sb+hw8UbiHoZaSIvuc799Ixdo0p1UQLAP3KZGjL
 T2dB/Z7xOjjgzTbJRdYAfCmsZ5Osa2BMBkGCMpAUVm1VLNzM8A3lVcw2juQONwNENvrD
 KX8kFCsAmrgs9+yucj0elOxmzkVCKPPoMN7pj2gqhOqAKJL7vV3zu8JZ6AELqUcSR3AY
 ctEpDnUum90NWrJhhFussIYv3bVXkYJlq1HYnKODZIHZF16BUfJa4uUYXMnsyWtZvhl6
 3kFw==
X-Gm-Message-State: APjAAAUMjvh+Y5w1t3ClPJ5OEUr1UpgSg92qPncxLzdGE5wVgehepeYr
 SknscgSBQUxyGzxOqUlf1KVZoUS1
X-Google-Smtp-Source: APXvYqxLTKGNBPnVV7F1nsr8P1k6oMwJDkr+g+DhhdcgWX27fTtvSgzEBNv1yF6FKLt0dhXcnGvMhw==
X-Received: by 2002:a2e:7d0c:: with SMTP id y12mr19624088ljc.39.1582202464752; 
 Thu, 20 Feb 2020 04:41:04 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id b20sm1737707ljp.20.2020.02.20.04.41.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 04:41:03 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Feb 2020 13:40:54 +0100
Message-Id: <20200220124055.10818-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_044108_347671_3A2D894C 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:232 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 1/2] busybox: enable truncate on bcm53xx
 target
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKSXQncyBuZWVkZWQgZm9y
IG9wdGltaXplZCBzeXN1cGdyYWRlLiBPbiBob3N0IG1hY2hpbmUgdGhpcyBjaGFuZ2UKaW5jcmVh
c2VkIGJ1c3lib3ggc2l6ZSBieSA0MDk2IEIuCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVj
a2kgPHJhZmFsQG1pbGVja2kucGw+Ci0tLQogcGFja2FnZS91dGlscy9idXN5Ym94L0NvbmZpZy1k
ZWZhdWx0cy5pbiB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0t
Z2l0IGEvcGFja2FnZS91dGlscy9idXN5Ym94L0NvbmZpZy1kZWZhdWx0cy5pbiBiL3BhY2thZ2Uv
dXRpbHMvYnVzeWJveC9Db25maWctZGVmYXVsdHMuaW4KaW5kZXggYzcxNWU0Yjk5My4uMzY3MzFm
MmI2ZSAxMDA2NDQKLS0tIGEvcGFja2FnZS91dGlscy9idXN5Ym94L0NvbmZpZy1kZWZhdWx0cy5p
bgorKysgYi9wYWNrYWdlL3V0aWxzL2J1c3lib3gvQ29uZmlnLWRlZmF1bHRzLmluCkBAIC04NDMs
NiArODQzLDcgQEAgY29uZmlnIEJVU1lCT1hfREVGQVVMVF9UUlVFCiAJZGVmYXVsdCB5CiBjb25m
aWcgQlVTWUJPWF9ERUZBVUxUX1RSVU5DQVRFCiAJYm9vbAorCWRlZmF1bHQgeSBpZiBUQVJHRVRf
YmNtNTN4eAogCWRlZmF1bHQgbgogY29uZmlnIEJVU1lCT1hfREVGQVVMVF9UVFkKIAlib29sCi0t
IAoyLjI1LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQu
b3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRl
dmVsCg==
