Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3727B11F459
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Dec 2019 22:55:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QTiGWG15WO3SaAsPtMTVwkr5jdAH10vrsRXWDipBPkU=; b=VWUhjkuWc2/yMF
	KNSprit+1kJauCU5aYlujZ716Xr5Js10sO7HY5ne5jTEEO4Ox0ip2pouJLwkKRSjEsZ+tES6/E02s
	BZBYiksx8tdqNFvr8Y1MxUa+GvmvSNfITNeZ49i6I//5yY4k0zxienTGScZnZt7V15OwQV2PrhrBU
	9gYXgJKBTiSkbbLEa7K8i/ynfe/xILum4X4UnysuqVDLAviK91d49EF0YxEsdyVxE3XN00MC+vE1z
	hDUFJ8PUopUtKEEKY9SkVYhREElBvvwRaw5IR6YYalFdB31P+NX0ZUQ2yEQxiyh9zXVrn95oU8OR6
	+PCVcFqOcW2B4XjSN42g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igFNm-0000wz-Kd; Sat, 14 Dec 2019 21:55:26 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igFNf-0000wE-1w
 for openwrt-devel@lists.openwrt.org; Sat, 14 Dec 2019 21:55:20 +0000
Received: by mail-lj1-x243.google.com with SMTP id 21so2646913ljr.0
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Dec 2019 13:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f6jtzwTskEHK5L5CdaKMGJO1fGrueaUq1wNqkLq1vO0=;
 b=cvs1tw1o4tQJG3tl/P4vftYEb9jY/Uc4k23815YhxfKVeKgd2DGIOv8DDjJjjpW5gE
 8Ile3aHVmChBlNm82fz7nwun7KqT6a8Y3YJu2Ly17xddM39no1OIAC3qsFa+HbrCnnqr
 J4vjfVoulVejNK2W5O/24x4Mh0ZvSv0EJstAqgycRHZXeH0UwJa3Il3yAIYrLuNyags1
 BVMfhSuTHIGKozx5Wsky06hrSJRtoGJ1h/LSLXeoNFBVH5P2atGL6ffhZbEqE0N2Ux1o
 Q2Anx06/OhsPoadid9KcYDKIqMZSFcnICUYJT4+cqkLOfjTmQ/yNBob4WTFfKt24TyvO
 lNJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f6jtzwTskEHK5L5CdaKMGJO1fGrueaUq1wNqkLq1vO0=;
 b=VHccrfYHzVyKj8qxacj4v59+H76aZkBAnNngEjThwEYoAIPB0dQORNKyfMHyWPOc3y
 DATgDRw4F9EiL9ivMaHAVRgr39KmPMVy7smanaon/rECVBMYaSI8uqGNgQHyqd3lAgl8
 9I9Nw2l1mqHTNPkRnJmciJJnaqV+qSHaNKteptmj5m1ElUmG+uYYMs3x8ux36Yfm7zEv
 zASTt2v1Q3aFzCgHlIED+JGHzvYCAtYuXyNGuHD9Hwj5P8sHy3D7uKPxNUK9wvBT0NQ1
 hLLm7KbO/QfeZ4S8Ax+w/4/u+BuMvQiNEMba53W3AlWqaN1cVW/ATQE/WYkV2yBgVwnX
 Vc6Q==
X-Gm-Message-State: APjAAAWUMuqj9KIMnEu85P0jHL6+ltDOKGt70vn+33CYHLmhhDzCEt9X
 z70/bMEXP4IyAX1joAq5m2BaXJkd
X-Google-Smtp-Source: APXvYqwXhZtXjzQ1iSztsg2kSjlB9ROeUzp5SWlnij+KiZuJzIwpHupFZee4TFhnUt/Nnqg67dwA2w==
X-Received: by 2002:a05:651c:208:: with SMTP id
 y8mr14522858ljn.36.1576360516229; 
 Sat, 14 Dec 2019 13:55:16 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id f26sm7272897ljn.104.2019.12.14.13.55.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Dec 2019 13:55:15 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 14 Dec 2019 22:54:59 +0100
Message-Id: <20191214215501.14219-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_135519_122246_DC25FED2 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH fstools 0/2] libblkid-tiny: rework handling
 buffers
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
 John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhpcyBmaXhlcyBwcm9i
bGVtIHdpdGggY29ycnVwdGluZyBkYXRhIGJ1ZmZlciBieSBhIHN1YnNlcXVlbnQgZGF0YQpyZWFk
LiBUaGlzIHdhcyBvcmlnaW5hbGx5IHJlcG9ydGVkIGluIHRoZToKbGliYmxraWQtdGlueTogYnVn
Z2VkIGJ1ZmZlciBtYW5hZ2VtZW50Ck1lc3NhZ2UtSUQ6IDw5NGU2ZjA0ZC0xOWM1LTM4MTgtMDc0
OC1kYjRlYzBkNDgxYWRAZ21haWwuY29tPgoKUGxlYXNlIHZlcmlmeSBJIGRpZG4ndCBhZGQgYW55
IG1lbW9yeSBsZWFrLiBJIGhvcGUgSSBhY3R1YWxseSBmaXhlZCBvbmUKaW4gdGhlIGJsa2lkX3By
b2JlX2dldF9idWZmZXIoKS4KClJhZmHFgiBNacWCZWNraSAoMik6CiAgbGliYmxraWQtdGlueTog
YWRkIGZ1bmN0aW9ucyBmb3IgYWxsb2NhdGluZyAmIGZyZWVpbmcgcHJvYmUgc3RydWN0CiAgbGli
YmxraWQtdGlueTogdXNlIHNlcGFyYXRlZCBidWZmZXIgZm9yIGVhY2ggYmxvY2sgZGV2aWNlIHJl
YWQKCiBDTWFrZUxpc3RzLnR4dCAgICAgICAgICAgICAgICB8ICAxICsKIGxpYmJsa2lkLXRpbnkv
bGliYmxraWQtdGlueS5jIHwgMzYgKysrKysrKysrLS0tLS0tLS0tLS0tLS0KIGxpYmJsa2lkLXRp
bnkvbGliYmxraWQtdGlueS5oIHwgIDUgKysrKwogbGliYmxraWQtdGlueS9wcm9iZS5jICAgICAg
ICAgfCA1NCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogcHJvYmUuYyAgICAg
ICAgICAgICAgICAgICAgICAgfCAzOCArKysrKysrKysrKysrLS0tLS0tLS0tLS0KIDUgZmlsZXMg
Y2hhbmdlZCwgOTYgaW5zZXJ0aW9ucygrKSwgMzggZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAx
MDA2NDQgbGliYmxraWQtdGlueS9wcm9iZS5jCgotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxp
c3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQu
b3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
