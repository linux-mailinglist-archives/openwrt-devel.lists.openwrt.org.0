Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A406805A
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jul 2019 19:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7ZkYU3yYg9d2GT8g7Ac+Y0hEYpVdfw2lANzBbx8RmI=; b=E2dvOpgcvrxEhv
	a16BIxaCKZuTZeZoFa76INEBWXEaZ3xvoYsRCgBHuqbcf7WNh3h7/e/Voo0OvNdU4vGOdlfsNcQJD
	JP4EL3qK+Q6vV/AHpr23G5rLK+BmyBNh0nyNyLKcOnveddt4yaPaSV87KA0veNHpiAbR2w6rkEoVd
	Xpotfg4PyaTkLq91Uk3m/OJSs5sFrAau+pF9v8uvWKD5e70JrYcTOHHqwxGkA9J29R09PkLDcwIhR
	PseVer1Uv3OJA03r6UiWvfGNfYbmpNvBCWCkXzKZQQMTjUoDgo0IfOTP7Z9TVZnZiNkRCMz/q7S4r
	8/eYoEmhY5NQCcQQgibw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmhrb-0001VF-CS; Sun, 14 Jul 2019 17:00:40 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmhrA-0001Gl-HY
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jul 2019 17:00:13 +0000
Received: by mail-lj1-x22f.google.com with SMTP id i21so13832587ljj.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 14 Jul 2019 10:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HQA1CRv8HZekg0WBKOzduuzmlNF9OtMbUqsq1MQRfS8=;
 b=Zwvu5j6+lxKL2fwA/MktkZfSKXeLcod+J2jROw7bfXc3kI58SL9WaWaoScdLxW7zER
 bIb6OV0zb4EVXbGr4o4rZadAUvz7CemgydyzO69D/bvSZrJ7TL1+eGX0KXfLpAuV/D07
 Zbue/YNJrkDsUmDuxxgkgkoLAd6VwIxY4WaDScV4zO2/TA9CjrwTE50pkzABm1BnJTpU
 kPx9KLOUbG2sv6VIzGyRsFEeWY9QlUYUmfxbbod9Y2XAb0fI9oJGgTZfmz+lAKfqO4se
 H7NErzpScOk3I4W/nf57Qyx55+5sZKKmUUz5IaXOUj8ESRgvU856emvOcDJ1ssI254+F
 08zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HQA1CRv8HZekg0WBKOzduuzmlNF9OtMbUqsq1MQRfS8=;
 b=dUDXzmxjrE228J88XcF2/KQyEu5x9UWuRdGESZ7Ilbs1tfyLten5VVt5Ne4524AGs/
 42UU9521pwP6DnDOp6CdiNwe8jRFt41Q7uL16VOUEjgSh79z4kHV1FJKic5i8iYohFHo
 o2cDsKQXK8bNEyasens5FX2BiZdqPYWK9UrA0EkUi2IjXAat45gxL9wzSxkcPSsJAV2c
 pvVpBwrV0n/sjB4GcEVqk8RDAUAo+31zmXNG9imynOhfU82THLhCbV+gTza3zJrrkzNc
 Z7ESTNDnPcbQWEC60D+ceLzPhLUfNIdITCROO0zVrKkNpVwLknVSYyyB62eaLm6uA5cH
 gApg==
X-Gm-Message-State: APjAAAVyAD/W5WQIRWYG3lsoqoPFuUNKrLsXDw+JPLomM9Eo21sJ+4TI
 eHJgAFmxlkH04wYbig5KZGjJ/d2L
X-Google-Smtp-Source: APXvYqweLh8CF/CJKpqV2TLiM1iqf7DN0V1fwTKxIX7jminyH5soqbiiMpnD83QZz96X8BOZk9CLuQ==
X-Received: by 2002:a2e:9754:: with SMTP id f20mr11432145ljj.151.1563123610635; 
 Sun, 14 Jul 2019 10:00:10 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id y29sm2641845ljd.43.2019.07.14.10.00.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 10:00:10 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 14 Jul 2019 19:00:00 +0200
Message-Id: <20190714170000.8567-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190714170000.8567-1-zajec5@gmail.com>
References: <20190714170000.8567-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_100012_581730_4B8D5A77 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22f listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] base-files: don't set ARGV and ARGC
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhvc2UgYXJlIG5vdCB1
c2VkIGJ5IGFueSBpbWFnZSBjaGVjayBmdW5jdGlvbiBhbnltb3JlLgoKU2lnbmVkLW9mZi1ieTog
UmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgotLS0KIHBhY2thZ2UvYmFzZS1maWxl
cy9maWxlcy9zYmluL3N5c3VwZ3JhZGUgfCAzIC0tLQogMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL3NiaW4vc3lzdXBn
cmFkZSBiL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9zYmluL3N5c3VwZ3JhZGUKaW5kZXggNzMy
OTEyNjJlNy4uMDAxZTY0NDQ3NiAxMDA3NTUKLS0tIGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVz
L3NiaW4vc3lzdXBncmFkZQorKysgYi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvc2Jpbi9zeXN1
cGdyYWRlCkBAIC0zMTYsOSArMzE2LDYgQEAgY2FzZSAiJElNQUdFIiBpbgogCQk7OwogZXNhYwog
Ci1leHBvcnQgQVJHVj0iJElNQUdFIgotZXhwb3J0IEFSR0M9MQotCiBmb3IgY2hlY2sgaW4gJHN5
c3VwZ3JhZGVfaW1hZ2VfY2hlY2s7IGRvCiAJKCAkY2hlY2sgIiRJTUFHRSIgKSB8fCB7CiAJCWlm
IFsgJEZPUkNFIC1lcSAxIF07IHRoZW4KLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
