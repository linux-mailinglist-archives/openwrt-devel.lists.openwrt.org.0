Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2501C1FB49E
	for <lists+openwrt-devel@lfdr.de>; Tue, 16 Jun 2020 16:40:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z9/I2UNN5CQs7mBf21Uvp/0gD2WBWgxPkPalbw+J+Lk=; b=p6Sp2L7f5gLeXE
	gC+8yyB4YiwajPI7i9O6dDkgWFNF52hZ0h1dIuUwQboSp7I42SCWfT+joOedOA8xyNMTMesKPcmsT
	RE4Zwx+figbj6mLOZFCFSQVUhMj0JqyMhULHYpmxPwSW5nYSzwwBBMqykyuq3uvusmxAlWra0sXa6
	dIHuepiAaxMJ/VLbErip0BTr2AE2qf+8JmfavQUMEGJwlA46k0c8LtdoKKq4lkAjIim5f7LXLdeBk
	2U7KUi6AsGp6vauZ4VM+fZJcpkun1EAKkV5lHFQrytug+KRhPIYzb5iiDM0ewp4bWc5JWD3N5u8zn
	MaLeFSUEKv9gstk6v+PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlClZ-0001JH-BG; Tue, 16 Jun 2020 14:40:45 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlClT-0001Is-3c
 for openwrt-devel@lists.openwrt.org; Tue, 16 Jun 2020 14:40:40 +0000
Received: by mail-wr1-x444.google.com with SMTP id x13so21032027wrv.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 16 Jun 2020 07:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oM9A2o/KScuIU2mv4M4cV3Vm2BNzvSOoSmzGOBMPLls=;
 b=hG1mMfnZS5LaaDqRver1oRZUKOxnmv4JPLqO02jmXTHwNrUJAODGYoW1lT8MJtUhEh
 F9ZUHrcl7AMTvMDsMAzfvAPeyVbEl36VUILZkCBXQ40+NpvC4zDNmUBiWw5Xjk6Y0FZl
 RsvgFaOMTkodIYmGc19vXe7mRCssf7vaPzmrVLo7Bf5li3FPdxnIxvO0S6SXjt3USUVi
 bkow0FNJShpyfxrbZEdrMmWkUETiG1xnEhrht3jRC9+QCpyn3puWmDhDQ9KM2HqNULG0
 zXvXq5IDNRglONZL/D7A/2jfzfyFGxqLYCFAfv51NSasQW41EQytxe2AMx3JZzRqTiq4
 VJsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oM9A2o/KScuIU2mv4M4cV3Vm2BNzvSOoSmzGOBMPLls=;
 b=j1ci22iBHz6aOtTrq2gJ7N31Ea8AsfoGdaWUIbKzRVSPY55P0sOiihPeizd9hUDw+c
 DdRRpcE+oXiUZUFdp0nkjkxIOBAhAyJ07gH2FIyRntfj96+4c7qzJ37+XObpfbS8nOfa
 KyzFgvbIvxOb4eVHFgWfKS+U6onyjGQ0YRRXYYFGbEPZ4yk6wW9jVADqygk6c3QuwZg/
 pJB3vMrU14v+tJR/uEwFcipy3HOZ7j/MgfRpZoaoJXzBlxWLjMkI1NKDjCB6c4zP2bV5
 n3PD3h/X72bBcGTP/MWhrFE7tV0s2RrlCG2TUc5eZe/TfOh1vn4V63KcKL3nJsUmWzUg
 xpkA==
X-Gm-Message-State: AOAM530li/ECeQUUPoukwarkCww3sTJY2WIF5jUN0uG+LtBZFDLz7Eaj
 ofoijfLYz6MhM9KCydC0uv22E9nJ
X-Google-Smtp-Source: ABdhPJzruVZvZV90Gzx2Ye3sa4UCI10OJJhFax7bhACJALV1fJmDVpEO68H97uLYKX2/2iL8FQvHtA==
X-Received: by 2002:adf:b198:: with SMTP id q24mr3423482wra.368.1592318434983; 
 Tue, 16 Jun 2020 07:40:34 -0700 (PDT)
Received: from localhost ([2001:1488:fffe:6010:a25b:c454:9c62:795e])
 by smtp.gmail.com with ESMTPSA id p16sm32020978wru.27.2020.06.16.07.40.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 07:40:34 -0700 (PDT)
From: "=?UTF-8?q?Karel=20Ko=C4=8D=C3=AD?=" <citrisin@gmail.com>
X-Google-Original-From: =?UTF-8?q?Karel=20Ko=C4=8D=C3=AD?= <karel.koci@nic.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 16 Jun 2020 16:38:53 +0200
Message-Id: <20200616143853.32668-1-karel.koci@nic.cz>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_074039_167289_D4783AD3 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [citrisin[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] hostapd: fix compilation of wpa_supplicant
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
Cc: =?UTF-8?q?Karel=20Ko=C4=8D=C3=AD?= <karel.koci@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VWJ1cyBwYXRjaCBhcyBpdCBzZWVtcyBoYXZlIGJlZW4gYnJva2VuIGJ5IHNvbWUgcmViYXNlIGlu
IHRoZSBwYXN0IGFzCnRoZSBsb2NhdGlvbiBvZiBsaW5lIHRoYXQgYWRkcyB1YnVzIG9iamVjdCBm
aWxlIHdhcyBpbiBjb25kaXRpb24gZm9yCkNPTkZJR19NQUNTRUMuIFRoYXQgY29uZGl0aW9uIHdh
cyBhZGRpbmcgb2JqZWN0IGZpbGVzIHRoYXQgYXJlIG5vdAp0b3VjaGVkIGJ5IHVidXMgcGF0Y2gu
IFRoaXMgbWVhbnMgdWJ1cy5vIGRvZXMgbm90IGhhdmUgdG8gYmUgaW5jbHVkZWQgaW4KdGhhdCBj
YXNlLiBXaGVuIGl0IGhhcyB0byBiZSBhbmQgd2hlbiBidWlsZCBmYWlscyBpcyB3aGVuIENPTkZJ
R19BUCBpcwpzZXQuIEFsbCBmaWxlcyBpbmNsdWRlZCBpbiB3cGFfc3VwcGxpY2FudCB0aGF0IGFy
ZSB0b3VjaGVkIGJ5IHRoaXMgcGF0Y2gKYXJlIGluIHRoaXMgY29uZGl0aW9uLiBUaGlzIG1lYW5z
IHRoYXQgdGhpcyBpcyBmb3Igc3VyZSB0aGUgb3JpZ2luYWwKcGxhY2UgZm9yIGl0LgoKU2lnbmVk
LW9mZi1ieTogS2FyZWwgS2/EjcOtIDxrYXJlbC5rb2NpQG5pYy5jej4KLS0tCiAuLi4vc2Vydmlj
ZXMvaG9zdGFwZC9wYXRjaGVzLzYwMC11YnVzX3N1cHBvcnQucGF0Y2ggICAgICAgfCA4ICsrKyst
LS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBkL3BhdGNoZXMvNjAwLXVi
dXNfc3VwcG9ydC5wYXRjaCBiL3BhY2thZ2UvbmV0d29yay9zZXJ2aWNlcy9ob3N0YXBkL3BhdGNo
ZXMvNjAwLXVidXNfc3VwcG9ydC5wYXRjaAppbmRleCBkMmQ0NWFjOTcxLi5mMGE2MzdlNGI2IDEw
MDY0NAotLS0gYS9wYWNrYWdlL25ldHdvcmsvc2VydmljZXMvaG9zdGFwZC9wYXRjaGVzLzYwMC11
YnVzX3N1cHBvcnQucGF0Y2gKKysrIGIvcGFja2FnZS9uZXR3b3JrL3NlcnZpY2VzL2hvc3RhcGQv
cGF0Y2hlcy82MDAtdWJ1c19zdXBwb3J0LnBhdGNoCkBAIC0yODQsMTYgKzI4NCwxNiBAQAogIGlm
ZGVmIENPTkZJR19DT0RFX0NPVkVSQUdFCiAgQ0ZMQUdTICs9IC1PMCAtZnByb2ZpbGUtYXJjcyAt
ZnRlc3QtY292ZXJhZ2UKICBMSUJTICs9IC1sZ2NvdgotQEAgLTg4Nyw2ICs4OTMsOSBAQCBPQkpT
ICs9IC4uL3NyYy9wYWUvaWVlZTgwMl8xeF9zZWN5X29wcy5vCi0gaWZkZWYgQ09ORklHX0FQCi0g
T0JKUyArPSAuLi9zcmMvYXAvd3BhX2F1dGhfa2F5Lm8KK0BAIC05NTYsNiArOTYyLDkgQEAgaWZk
ZWYgQ09ORklHX0NUUkxfSUZBQ0VfTUlCCisgQ0ZMQUdTICs9IC1EQ09ORklHX0NUUkxfSUZBQ0Vf
TUlCCiAgZW5kaWYKKyBPQkpTICs9IC4uL3NyYy9hcC9jdHJsX2lmYWNlX2FwLm8KICtpZmRlZiBD
T05GSUdfVUJVUwogK09CSlMgKz0gLi4vc3JjL2FwL3VidXMubwogK2VuZGlmCiAgZW5kaWYKICAK
LSBpZmRlZiBDT05GSUdfSUVFRTgwMjFYX0VBUE9MCisgQ0ZMQUdTICs9IC1ERUFQX1NFUlZFUiAt
REVBUF9TRVJWRVJfSURFTlRJVFkKIC0tLSBhL3dwYV9zdXBwbGljYW50L3dwYV9zdXBwbGljYW50
LmMKICsrKyBiL3dwYV9zdXBwbGljYW50L3dwYV9zdXBwbGljYW50LmMKIEBAIC02Nzk3LDYgKzY3
OTcsOCBAQCBzdHJ1Y3Qgd3BhX3N1cHBsaWNhbnQgKiB3cGFfc3VwcGxpY2FudF9hCi0tIAoyLjI3
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVu
d3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
