Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C12F866C07
	for <lists+openwrt-devel@lfdr.de>; Fri, 12 Jul 2019 14:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqa+3uk7KG9p9S7eVAd4wM6q/pU9hVDHR7MkMm2aNho=; b=jVRvWkhxRfHGUF
	WtWJSxrhfRaLsq0xU/1qrLeGXl5/aXiVkk5eI7d91U16ftKAxknml1VgrJe/OiETiVva896U71tJ+
	DBdpBmXPBVO0rPcadTMdZbgmWZwXJdxHZzUYFUttP5QsIoFRBeAHf4aSdOvQAAESJNJzb2E3nnpog
	phuai0Q1HRAdZbOuIyOL5UZKH/qqOxnlJQuNzmMsgMpYauP1LZRkKhsYuGB+vV81T4pNWNBbRGla3
	tg9BL90YbdPCS7hqinjfm2jXbEeyDaeuRznmJaO4VQ/o6WRdBHl1apb2ldijcIEvQfNddiNsfpWHZ
	COy31cFQl3WbYT86uHBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hluJk-0004Vq-KS; Fri, 12 Jul 2019 12:06:24 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hluJO-0004Nq-So
 for openwrt-devel@lists.openwrt.org; Fri, 12 Jul 2019 12:06:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id p17so9121076ljg.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 12 Jul 2019 05:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vqd02uahoTgTr35SstqgQr08D/vl5Y7sN7/kL/Zzafs=;
 b=obSO1LUaM7QvTdVeXfHIe9NMQ22cOi6ZTUFQs++Qnsh4TLTah6J+1ozMPeV9IXM9JD
 XmjjbSpseu4F6DWlPiG+gF7e9KQjqSdqLYLJJ2Bs6At+qHdt48OzJt4tVuWJID7rm5Ce
 wjE798NlnXDWGGO1dMYyDyAIR2ed9ZCxbTtnvLFILwdhvN1Jookl9WDZ0lOK0Oi3DXtn
 FYFCD7KaQ1URh00jgNG14t0YGb7iN17b/HP8sUPvu5nUQXqt4PZcbL+/et7c7Zw+8c/Y
 uB8s0q1G5+vJuU+SGmIJG4wNWMoY+6A924CsNuS+UNRGjyW9t7796dIGsC3ovKns8jg8
 Lbyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vqd02uahoTgTr35SstqgQr08D/vl5Y7sN7/kL/Zzafs=;
 b=LhkIal/TO0INZdtzraWd3mgezwOWjw7bheOL93VJxKKqHFlhzGmcoJrLkZZ37dvrqS
 oh0Wxbq3nXkZ5wZy6wtwXn3ju955mV2/FOwVzv1rZUklWjdUhU9SCxv2hZRnz1KhiEYL
 JCR9+8hjjfkghcZOKSwkqx0rL8+6pxfRP8aKOcsXU3vXYPLaqP4JAru3bJvgE0T6DuNO
 roEeDibZQ8R2rCgwBQfDqqIyX4PQKJW9t8wvgiNyjJA2fShoICQuNRPObGUlNGmRWo+p
 eMLKAKipqjrOds9qRkhgF5BTj6ii6KzQlJ1FUnEiVI85EBuRxRqY7HsVA3sc5B2wyV06
 duBw==
X-Gm-Message-State: APjAAAURCoj8Me2De7eoB/YFJnknhLEilSa8o4btCaxmV1c2InXMHbsY
 klCx1w9iMKRpggoHn6zXv0XYe9KR
X-Google-Smtp-Source: APXvYqxg8MkddLILz9q8j6dVouWZ+RXeOWM9+lDQYxxM/xvE3eL0JN0UFs7LbZvXnrNeMcJ0vbP/4w==
X-Received: by 2002:a2e:9858:: with SMTP id e24mr5651495ljj.91.1562933161258; 
 Fri, 12 Jul 2019 05:06:01 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id 20sm1432831ljf.21.2019.07.12.05.06.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 05:06:00 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 12 Jul 2019 14:05:48 +0200
Message-Id: <20190712120549.27778-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190712120549.27778-1-zajec5@gmail.com>
References: <20190712120549.27778-1-zajec5@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_050602_929377_182F0C56 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zajec5[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zajec5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 2/3] imx6: get rid of platform_pre_upgrade()
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

RnJvbTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgoKVGhlIG9ubHkgc3RlcCBi
ZXR3ZWVuIHBsYXRmb3JtX3ByZV91cGdyYWRlKCkgYW5kIHBsYXRmb3JtX2RvX3VwZ3JhZGUoKQpp
cyBzd2l0Y2hpbmcgdG8gcmFtZGlzay4gSXQgc2hvdWxkIGJlIGZpbmUgdG8gY2FsbCAiamZmczJy
ZXNldCIgJgoidW1vdW50IiBmcm9tIHRoZSBsYXRlciBjYWxsYmFjayBhbmQgZ2V0IHJpZCBvZiB0
aGUgZmlyc3Qgb25lLgoKU2lnbmVkLW9mZi1ieTogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxl
Y2tpLnBsPgotLS0KIC4uLi9pbXg2L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2gg
ICAgfCAxOCArKysrKy0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3RhcmdldC9saW51eC9pbXg2L2Jhc2Ut
ZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggYi90YXJnZXQvbGludXgvaW14Ni9iYXNlLWZp
bGVzL2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCmluZGV4IGMzYmU5ZDU0MjQuLjM1OGM0Yzk3MDcg
MTAwNzU1Ci0tLSBhL3RhcmdldC9saW51eC9pbXg2L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxh
dGZvcm0uc2gKKysrIGIvdGFyZ2V0L2xpbnV4L2lteDYvYmFzZS1maWxlcy9saWIvdXBncmFkZS9w
bGF0Zm9ybS5zaApAQCAtMjYsNiArMjYsMTEgQEAgYXBhbGlzX2RvX3VwZ3JhZGUoKSB7CiAJbG9j
YWwgYm9hcmRfbmFtZT0kKGJvYXJkX25hbWUpCiAJYm9hcmRfbmFtZT0ke2JvYXJkX25hbWUvLC9f
fQogCisJWyAiJFNBVkVfQ09ORklHIiAtZXEgMCBdICYmIHsKKwkJamZmczJyZXNldCAteQorCQl1
bW91bnQgL292ZXJsYXkKKwl9CisKIAlhcGFsaXNfbW91bnRfYm9vdAogCWdldF9pbWFnZSAiJDEi
IHwgdGFyIE94ZiAtIHN5c3VwZ3JhZGUtJHtib2FyZF9uYW1lfS9rZXJuZWwgPiAvYm9vdC91SW1h
Z2UKIAlnZXRfaW1hZ2UgIiQxIiB8IHRhciBPeGYgLSBzeXN1cGdyYWRlLSR7Ym9hcmRfbmFtZX0v
cm9vdCA+ICQocm9vdHBhcnRfZnJvbV91dWlkKQpAQCAtNzIsMTYgKzc3LDMgQEAgcGxhdGZvcm1f
Y29weV9jb25maWcoKSB7CiAJCTs7CiAJZXNhYwogfQotCi1wbGF0Zm9ybV9wcmVfdXBncmFkZSgp
IHsKLQlsb2NhbCBib2FyZD0kKGJvYXJkX25hbWUpCi0KLQljYXNlICIkYm9hcmQiIGluCi0JYXBh
bGlzKikKLQkJWyAiJFNBVkVfQ09ORklHIiAtZXEgMCBdICYmIHsKLQkJCWpmZnMycmVzZXQgLXkK
LQkJCXVtb3VudCAvb3ZlcmxheQotCQl9Ci0JCTs7Ci0JZXNhYwotfQotLSAKMi4yMS4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
