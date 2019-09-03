Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 015C0A68D2
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Sep 2019 14:45:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ekn4Y/7/wXQDkViEVV2MtycU3504av7iPY9h6PemUzc=; b=dySKX4kf+JgCHi
	QpB6n/24HCY/1miOmWZBMD3jgoVV6S/g0Bld8jAJtcAYktgchHIPfjqW9GTmADGuvqUtQr4qVrAXV
	wfpNncZv7vZrUyoHbyBwFQkbPdWOQJ5SMBDFi6W2aQgoTezGFAGWP5Eubdvaxd84J7/IFwUJk3Jcp
	Jf+sRQvR4KUzh5NgDuqBjgtRK3Or5bNRG0UVPHK03yGurcpkhBDb6XFa1QAa8nYRm2002SfRK1PR+
	XDnul8HMPWL3SY1ADi+zwqSdc7n+0+Qn+8vWbjCf39otCtaqycsgQdhGwqtvI0R6XiZLzrP/IhfjG
	L3p76ctaqtBuZQa6wQUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i58B8-0005vX-Th; Tue, 03 Sep 2019 12:44:58 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i58Az-0005v9-DX
 for openwrt-devel@lists.openwrt.org; Tue, 03 Sep 2019 12:44:50 +0000
Received: by mail-lf1-x142.google.com with SMTP id w67so12765222lff.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Sep 2019 05:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6whDCLbClohU+JVFPTPDNVHANtD2gb1aHpAtR5laffE=;
 b=KXGWC3EXrB39FakAjprODdV1Iyc/cpb6+0X69D6gYsJuD5LZcE5iBJi/GYKyCxeD5H
 P6AsnpzcD9Zb6c21isr2tgDLBrm2WjcA4YQZ5SlddY+oT4yoZfiiFBoCbsPvGpfc9C3t
 Dxqu0C5Aiy0KQP6KG2odUonTFyRR4O2tkmxq339vr4CT7NuqaaPPYywkcgs4to+oC3lO
 9I4ruX1We0PG5AssQv/SZQYK5WVNURNlG5BCPAWqjiPLzwHSPS+hXfu7/SvXzaU55FIr
 Z210k0eFSF6pEB/r7LR5doAuts1+ASlNXiQl1QtCFdrF+Uy6TGL9U6T7Rq9sFRrHArMf
 +E2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6whDCLbClohU+JVFPTPDNVHANtD2gb1aHpAtR5laffE=;
 b=Ntrt8SrmFNQb6B4FBoDaQSXguqn4Kl0GxwFuMI4Bcifo/hxHCafOfQrAPhaKFDG9B1
 1007AB4u1ZgDRRFWsCNTRQHBeBZpSMhrNqfqjNj1+qeb4qr513oZK/fyz+HTCgJJqlVb
 gpTu5fb5u7HjyPqqZ7mn8a9koiS64MCunJI7uFsna28oiLm33PKF499qUi2HNVlnOu5c
 xbqGA8YnH1QyztOZP8pN3c3eJSva4vbi+LddyykHyF9gy0GquU6hQMMJBrsQ8MjAmugb
 kJIpXTJbZqfP3ntMuQKG6DPSa+TZsDKbiEcwe6HRLS64RcLF2nEupObVCCOa12lRSLO2
 8O9w==
X-Gm-Message-State: APjAAAXqTW+0ODHGhzLe4MAXERqwDMx1fQHF9E3CpPYx3e1YUf5FPDA1
 XtZ5PQfqDTkF7DCYwHTLHQYKgvcu
X-Google-Smtp-Source: APXvYqyDYJXbPKkn3MFiwI8aYSWvjiKtDWHSEKqQ3cqWV/O6IA6LYYwqV1sznfTgNX3GrKxIgQD0DQ==
X-Received: by 2002:a19:f819:: with SMTP id a25mr8582085lff.45.1567514687000; 
 Tue, 03 Sep 2019 05:44:47 -0700 (PDT)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id r16sm1197603lfi.77.2019.09.03.05.44.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Sep 2019 05:44:46 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  3 Sep 2019 14:44:40 +0200
Message-Id: <20190903124440.11277-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_054449_486246_84D788A2 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] base-files: pass "force" parameter to the
 "sysupgrade" call
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBtYWtlcyBzeXN1
cGdyYWRlIHdvcmsgd2l0aCB0aGUgbW9zdCByZWNlbnQgcHJvY2QgdGhhdCB2YWxpZGF0ZXMKZmly
bXdhcmUgYmVmb3JlIHByb2NlZWRpbmcuCgpTaWduZWQtb2ZmLWJ5OiBSYWZhxYIgTWnFgmVja2kg
PHJhZmFsQG1pbGVja2kucGw+Ci0tLQogcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lz
dXBncmFkZSB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lzdXBncmFkZSBiL3BhY2thZ2Uv
YmFzZS1maWxlcy9maWxlcy9zYmluL3N5c3VwZ3JhZGUKaW5kZXggNDJmMGY2YmQyMi4uZjEwNmMz
Yzk4MSAxMDA3NTUKLS0tIGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lzdXBncmFk
ZQorKysgYi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvc2Jpbi9zeXN1cGdyYWRlCkBAIC0zNjAs
OSArMzYwLDEyIEBAIGlmIFsgLW4gIiRGQUlMU0FGRSIgXTsgdGhlbgogCXByaW50ZiAnJXNceDAw
JXNceDAwJXMnICIkUkFNX1JPT1QiICIkSU1BR0UiICIkQ09NTUFORCIgPi90bXAvc3lzdXBncmFk
ZQogCWxvY2sgLXUgL3RtcC8uZmFpbHNhZmUKIGVsc2UKKwlmb3JjZV9hdHRyPSIiCisJWyAkRk9S
Q0UgLWVxIDEgXSAmJiBmb3JjZV9hdHRyPSJcImZvcmNlXCI6IHRydWUsIgogCXVidXMgY2FsbCBz
eXN0ZW0gc3lzdXBncmFkZSAiewogCQlcInByZWZpeFwiOiAkKGpzb25fc3RyaW5nICIkUkFNX1JP
T1QiKSwKIAkJXCJwYXRoXCI6ICQoanNvbl9zdHJpbmcgIiRJTUFHRSIpLAorCQkkZm9yY2VfYXR0
cgogCQlcImNvbW1hbmRcIjogJChqc29uX3N0cmluZyAiJENPTU1BTkQiKSwKIAkJXCJvcHRpb25z
XCI6IHsKIAkJCVwic2F2ZV9jb25maWdcIjogJFNBVkVfQ09ORklHLAotLSAKMi4yMS4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
