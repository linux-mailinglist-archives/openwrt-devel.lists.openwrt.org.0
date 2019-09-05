Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BA3A9B9B
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 09:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RTPxUD8hw+4QnLwMQJTt6pq2RfvBSM1j6zwdGwk/xLI=; b=lhvImDIf1A2ukT
	bmUYWLRPpZteefh9uAbTBJz67YeK9ltD02kC+pS8bOAPEIVVEEUVLqIytiB9wJ17joiRqHlsqsSpw
	2Tk7b7wZ8rXeSs2lKMM1w5FTKVG4eD20JelekcDlYGxaceL5LVFCm718T1JzImaAEZ7QEwGF3ZkkS
	Ed6+J8J7InPcEpjWDMCaV2LY8DEbcmYIU3PL46dW7VvtcyuhnMb8i2ISsmxoaV9cl7fC0MsiUeng7
	EouZbMiaWJyjewzxbj+oHdh4xqreAZfey0W5hdGy2etWFOiMvjH1nbmd6hq3LRsCuw4OhAmCqcAqZ
	UoWCZFGEqMRpEGovfmoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5m4K-0001Vr-85; Thu, 05 Sep 2019 07:20:36 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5m4A-0001Up-N0
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 07:20:28 +0000
Received: by mail-lj1-x243.google.com with SMTP id a4so1275727ljk.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Sep 2019 00:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4SfDHMITn41hI0ULfDsFBAmN/u7K6wF3GvwnP8V53Pg=;
 b=LV4f616S/X4lOibloUMWEKDA2ton2K4SfxQGvUmETxswSSQvJXs8bBBy4F2YWPCsT/
 aUTRuFhV49bFKQk42ZjbyVzzvlpgPIuII1BEK6oPGrmp1iCRuLChsaCVRnfu6T+C1LOd
 79Qsy9uGHj6JTFSbOeUnrzRTb78WbUzZk+1iS604m/XXPhymU9HhDEhZmSspvvwRDRnJ
 ZmMT8bGHMvuU1z1r6aKUkMdxsEtgbuU4QrOdLtjLl/SHz4dQltHmt6AQiAw1ipW9L5ql
 ZS0SbEvtdq4mvMOGPm2Mf6misp3Y1sqgq30brXCaJ2avXMvyzS+PjD28FkWXn/bT6uRD
 UCkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4SfDHMITn41hI0ULfDsFBAmN/u7K6wF3GvwnP8V53Pg=;
 b=CLj0DQvTepm9x62tWAyLqmDGgFmBVytmAZu2mbZWcJYtOfch5/zUO7x2kh9xroXPuO
 qhPWjQwXsxvPpyVw4k+oR382HdtqcGPsTLc54RtOy2gbzB62vzzbbWYT30p3SujT8564
 rObCbHdAmaY1vpZtXS2pgrn5gkHnTz3Yf9+LjzUOJkw5ieIS4ksX/ueYlzMIin3Ugq67
 3KS4nV74pZhjNHnEPY+zZmE6rrXnRtWSor92ilf+COghu72KiE14F3MJdEgoV5hI+o9a
 P/uhvnm+GsY2AiAzqrSqfbg2JgwXWE/Epm+xAaOn80ZsP4gbW+loXEzuWmRr2dZGmWkG
 j7jA==
X-Gm-Message-State: APjAAAXh/f9AsYZQyNiGRzH/xX/yNhs757RUBmICEGJM2xK3nzi9dDA6
 yYiRDXdwSPXftynMeIt4DZXyimqW
X-Google-Smtp-Source: APXvYqyXxGSfWu3D0JFZ4lERKVOcHUZY7dZWgl65qVNVWr2sYDMtSrLOrZ4ClzHY+CVxor4KSXEl/g==
X-Received: by 2002:a2e:a40e:: with SMTP id p14mr1027343ljn.29.1567668020258; 
 Thu, 05 Sep 2019 00:20:20 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id v10sm210970ljc.64.2019.09.05.00.20.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 00:20:19 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org,
	John Crispin <john@phrozen.org>
Date: Thu,  5 Sep 2019 09:20:13 +0200
Message-Id: <20190905072013.2703-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_002027_558981_7868EE13 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH procd] sysupgrade: set UPGRADE_BACKUP env
 variable
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
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKSXQgcG9pbnRzIHRvIHRo
ZSBiYWNrdXAgZmlsZSB0byB1c2UgZHVpbmcgc3lzdXBncmFjZSBwcm9jZXNzLiBSaWdodCBub3cK
aXQncyBoYXJkY29kZWQgdG8gdGhlIC90bXAvc3lzdXBncmFkZS50Z3ouIE9uY2UgYWxsIGNsZWFu
dXBzIGFyZSBpbgpwbGFjZSAic3lzdXBncmFkZSIgdWJ1cyBtZXRob2Qgc2hvdWxkIGJlIGV4dGVu
ZGVkIHRvIGFsbG93IHBhc3NpbmcgYW55CmN1c3RvbSBwYXRoLgoKU2lnbmVkLW9mZi1ieTogUmFm
YcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgotLS0KIHN5c3VwZ3JhZGUuYyB8IDIgKysK
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zeXN1cGdyYWRl
LmMgYi9zeXN1cGdyYWRlLmMKaW5kZXggY2UzMDc5OC4uMTlmYjA1NCAxMDA2NDQKLS0tIGEvc3lz
dXBncmFkZS5jCisrKyBiL3N5c3VwZ3JhZGUuYwpAQCAtNDgsNiArNDgsOCBAQCB2b2lkIHN5c3Vw
Z3JhZGVfZXhlY191cGdyYWRlZChjb25zdCBjaGFyICpwcmVmaXgsIGNoYXIgKnBhdGgsIGNoYXIg
KmNvbW1hbmQsCiAJCXNldGVudigiV0RURkQiLCB3ZHRfZmQsIDEpOwogCX0KIAorCXNldGVudigi
VVBHUkFERV9CQUNLVVAiLCAiL3RtcC9zeXN1cGdyYWRlLnRneiIsIDEpOworCiAJYmxvYm1zZ19m
b3JfZWFjaF9hdHRyKG9wdGlvbiwgb3B0aW9ucywgcmVtKSB7CiAJCWNvbnN0IGNoYXIgKnByZWZp
eCA9ICJVUEdSQURFX09QVF8iOwogCQljaGFyIHZhbHVlWzExXTsKLS0gCjIuMjEuMAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
