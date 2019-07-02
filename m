Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 372665D144
	for <lists+openwrt-devel@lfdr.de>; Tue,  2 Jul 2019 16:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6cwF30pKJEZO4beu1oemQguoH4CZqbgzg5lV1MqpMg=; b=jeWeRrTEUV8fWZ
	PveAP+BfHI23BaOjB5qZh6PwgC+yS/xyzXzEWFrDbADHNjpGH2WHCcDZ2CgDC66pz8BqtQLmtmnfK
	CvdeBSuX5XvgG0YfeaeWvhLLk0YKMevcB7fIa7/DzG+Atq+LNfN4VSAXUJwQpxJr6CIbilx17/OWn
	V2qReDu/1cE0q4o047PfLcQpjJh1gZIAdUzFAjqb1hHJ7Lh05IfPtNPH8J50/C69d7uN2JGWea7YC
	jFzMXCFKMRPk6aAVTwrWRmmvUwfVBQEWnkT9T5ha3qF113hIra/5hs92y/QI1lxE6CVxOmEb+i99A
	SOyea/MTQqaxvAvICmlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiJWi-0006oc-Gf; Tue, 02 Jul 2019 14:12:56 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiJWX-0006o5-0N
 for openwrt-devel@lists.openwrt.org; Tue, 02 Jul 2019 14:12:46 +0000
Received: by mail-lj1-x243.google.com with SMTP id v24so17041563ljg.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 02 Jul 2019 07:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X51ShgE9Eh7MQzX0BkRk2zT6uq2bsw4oRHbVbZwrxkw=;
 b=J0EAfn9xBrFXchZ8TEfnvdX/TaQN/vQSfYB4QpTDrZu2fZu6YXRBfZKwm+ZNRxJZon
 WAD46rsYfgC3VaUqrDl2DgaVTnP3YDlNc8ZsAlA0G5H5gxzNsAmeCOf3jE26JhjQzDml
 8/x4rCAXPZh7rokW5RVZW6ycg1EY6LBefDSGxQGPuJk6LIYhMLTTi8IdtR6/up4hMzH5
 Ogk8DHLyj26Y1aZ0KQyPmYmfB1avBmM363sPVuBQEwOlgfv5qemo0sfoxVSOOry7nJJ1
 faJi1YC085skaRbTqQ/7AJIux2LXvrnc7/Kk0qWkypME8I50E6bRgDMzeUhsrKLZKyjO
 OnKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X51ShgE9Eh7MQzX0BkRk2zT6uq2bsw4oRHbVbZwrxkw=;
 b=aFfXIdZOFPOnxJjV48aTkwLj5d9pAdOASQ4bbuZt9bW/TFMBLJPYv7rWMPGyNEUocQ
 vPadRgNxyHK9stWSZGxuNc/4ED3cRnEIxxhomp1bnNjtr1r9U1Ay+6xATLZNBGf3glNm
 V7r7RtgaKouKFQJxZvDGKxH6lK0TP1ND4mQkVta2TSDcmXjyzvOZhEJLM96CF6jsDsPz
 B9rxY5hBVLkh3S3Dza8SBPJruG0jhp+TdLSqWOGmbQK96zqCG/AT4UDSPNNS3+R7AlsS
 rtKgDz1W0Hz3qr75u3nj8WT22VE6SBguf2WdE1Ys1iSIlEkXAL/uxPE0mm1QxWryT/sE
 o24Q==
X-Gm-Message-State: APjAAAVKBAJ1KUEYenRrYNyN1cqfQiRwqpnpmeDGtpV5FmwBb5wo/gUK
 rOkswhQXoPSk3i2J8KZm27wTJQol
X-Google-Smtp-Source: APXvYqw0SWnb+TZW4kPzYyAFK8b4RO7OncwBEZFy3yprDcKZIAr0L6wf0DgYoV7eR2Yg7KM37AFFwg==
X-Received: by 2002:a2e:9158:: with SMTP id q24mr17774388ljg.119.1562076760181; 
 Tue, 02 Jul 2019 07:12:40 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id y12sm3318690lfy.36.2019.07.02.07.12.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 02 Jul 2019 07:12:39 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  2 Jul 2019 16:10:57 +0200
Message-Id: <20190702141057.23433-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190702141057.23433-1-zajec5@gmail.com>
References: <20190702141057.23433-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_071245_059424_EB0D256F 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] base-files: drop support for NAND
 upgrade in platform_pre_upgrade()
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKV2l0aCBiY201M3h4IHN3
aXRjaGVkIHRvIHRoZSBuZXcgcHJvY2VkdXJlIHRoZXJlIGlzIG5vIG1vcmUgbmVlZCBmb3IKa2Vl
cGluZyB0aGF0IGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgY29kZS4KClNpZ25lZC1vZmYtYnk6IFJh
ZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4KLS0tCiBwYWNrYWdlL2Jhc2UtZmlsZXMv
ZmlsZXMvbGliL3VwZ3JhZGUvY29tbW9uLnNoIHwgNCArLS0tCiBwYWNrYWdlL2Jhc2UtZmlsZXMv
ZmlsZXMvbGliL3VwZ3JhZGUvbmFuZC5zaCAgIHwgOSAtLS0tLS0tLS0KIHBhY2thZ2UvYmFzZS1m
aWxlcy9maWxlcy9saWIvdXBncmFkZS9zdGFnZTIgICAgfCA1ICstLS0tCiAzIGZpbGVzIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvcGFja2Fn
ZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRlL2NvbW1vbi5zaCBiL3BhY2thZ2UvYmFzZS1m
aWxlcy9maWxlcy9saWIvdXBncmFkZS9jb21tb24uc2gKaW5kZXggYmJlZGVlZmQyNi4uN2M0YTJh
ZjA4ZiAxMDA2NDQKLS0tIGEvcGFja2FnZS9iYXNlLWZpbGVzL2ZpbGVzL2xpYi91cGdyYWRlL2Nv
bW1vbi5zaAorKysgYi9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvY29tbW9u
LnNoCkBAIC0yMzgsOSArMjM4LDcgQEAgZGVmYXVsdF9kb191cGdyYWRlKCkgewogCiBkb191cGdy
YWRlX3N0YWdlMigpIHsKIAl2ICJQZXJmb3JtaW5nIHN5c3RlbSB1cGdyYWRlLi4uIgotCWlmIFsg
LW4gIiRkb191cGdyYWRlIiBdOyB0aGVuCi0JCWV2YWwgIiRkb191cGdyYWRlIgotCWVsaWYgdHlw
ZSAncGxhdGZvcm1fZG9fdXBncmFkZScgPi9kZXYvbnVsbCAyPi9kZXYvbnVsbDsgdGhlbgorCWlm
IHR5cGUgJ3BsYXRmb3JtX2RvX3VwZ3JhZGUnID4vZGV2L251bGwgMj4vZGV2L251bGw7IHRoZW4K
IAkJcGxhdGZvcm1fZG9fdXBncmFkZSAiJElNQUdFIgogCWVsc2UKIAkJZGVmYXVsdF9kb191cGdy
YWRlICIkSU1BR0UiCmRpZmYgLS1naXQgYS9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL3Vw
Z3JhZGUvbmFuZC5zaCBiL3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvdXBncmFkZS9uYW5k
LnNoCmluZGV4IDk5OTE2YTRlOTYuLjlmMjU4YTgyYzUgMTAwNjQ0Ci0tLSBhL3BhY2thZ2UvYmFz
ZS1maWxlcy9maWxlcy9saWIvdXBncmFkZS9uYW5kLnNoCisrKyBiL3BhY2thZ2UvYmFzZS1maWxl
cy9maWxlcy9saWIvdXBncmFkZS9uYW5kLnNoCkBAIC0yODAsMTUgKzI4MCw2IEBAIG5hbmRfdXBn
cmFkZV90YXIoKSB7CiAKICMgUmVjb2duaXplIHR5cGUgb2YgcGFzc2VkIGZpbGUgYW5kIHN0YXJ0
IHRoZSB1cGdyYWRlIHByb2Nlc3MKIG5hbmRfZG9fdXBncmFkZSgpIHsKLQlpZiBbIC1uICIkSVNf
UFJFX1VQR1JBREUiIF07IHRoZW4KLQkJIyBQcmV2aW91c2x5LCBuYW5kX2RvX3VwZ3JhZGUgd2Fz
IGNhbGxlZCBmcm9tIHRoZSBwbGF0Zm9ybV9wcmVfdXBncmFkZQotCQkjIGhvb2s7IHRoaXMgcGll
Y2Ugb2YgY29kZSBoYW5kbGVzIHNjcmlwdHMgdGhhdCBoYXZlbid0IGJlZW4KLQkJIyB1cGRhdGVk
LiBBbGwgc2NyaXB0cyBzaG91bGQgZ3JhZHVhbGx5IG1vdmUgdG8gY2FsbCBuYW5kX2RvX3VwZ3Jh
ZGUKLQkJIyBmcm9tIHBsYXRmb3JtX2RvX3VwZ3JhZGUgaW5zdGVhZC4KLQkJZXhwb3J0IGRvX3Vw
Z3JhZGU9Im5hbmRfZG9fdXBncmFkZSAnJDEnIgotCQlyZXR1cm4KLQlmaQotCiAJbG9jYWwgZmls
ZV90eXBlPSQoaWRlbnRpZnkgJDEpCiAKIAlpZiB0eXBlICdwbGF0Zm9ybV9uYW5kX3ByZV91cGdy
YWRlJyA+L2Rldi9udWxsIDI+L2Rldi9udWxsOyB0aGVuCmRpZmYgLS1naXQgYS9wYWNrYWdlL2Jh
c2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvc3RhZ2UyIGIvcGFja2FnZS9iYXNlLWZpbGVzL2Zp
bGVzL2xpYi91cGdyYWRlL3N0YWdlMgppbmRleCBiZGMxMmM3NDI2Li4wNWQ5MjE0Mzc3IDEwMDc1
NQotLS0gYS9wYWNrYWdlL2Jhc2UtZmlsZXMvZmlsZXMvbGliL3VwZ3JhZGUvc3RhZ2UyCisrKyBi
L3BhY2thZ2UvYmFzZS1maWxlcy9maWxlcy9saWIvdXBncmFkZS9zdGFnZTIKQEAgLTEzNiwxMCAr
MTM2LDcgQEAgc2xlZXAgMQogCiAKIGlmIFsgLW4gIiRJTUFHRSIgXSAmJiB0eXBlICdwbGF0Zm9y
bV9wcmVfdXBncmFkZScgPi9kZXYvbnVsbCAyPi9kZXYvbnVsbDsgdGhlbgotCUlTX1BSRV9VUEdS
QURFPTEgcGxhdGZvcm1fcHJlX3VwZ3JhZGUgIiRJTUFHRSIKLQotCSMgTmVlZHMgdG8gYmUgdW5z
ZXQgYWdhaW4gYmVjYXVzZSBvZiBidXN5Ym94IHdlaXJkbmVzcyAuLi4KLQlJU19QUkVfVVBHUkFE
RT0KKwlwbGF0Zm9ybV9wcmVfdXBncmFkZSAiJElNQUdFIgogZmkKIAogaWYgWyAtbiAiJChyb290
ZnNfdHlwZSkiIF07IHRoZW4KLS0gCjIuMjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQt
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
