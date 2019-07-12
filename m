Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5A766C09
	for <lists+openwrt-devel@lfdr.de>; Fri, 12 Jul 2019 14:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XYcYM6LWTUrSId9B1hURqJsho1dB3K0PAe1PIX0Kch4=; b=GcZMbYrVu2UGaF
	NPF3YrS5YFoPptArya50F7vqyEgVEyejWsTHFqVNhemvMd6xzI3Wxw5KKqdpxDGxhqb7J7GIFGUVv
	Lcb3zr61M2BVWk2FtS+rG7p8sjdYBsw40EoyfC1OfQQaBcAYGWhueqm5XR2UNKuynVh9vT+o4WrXo
	lJ89gP1DgxoLlfWqsNTVBOTz4/yx5tACchpPo1SUMbEYUgblJUiR4ABqUZcva2OHsBXbMVUp5Ijhk
	xq4dfaLjFWqbm0todE+X9ZsY3+UTtzTW5sdqzFzTqdsk8Q8axhuogd3Iz5/2h6h1ozV3Zv9KCclMa
	l4Eu3HZ1hdW7Rng4csxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hluJY-0004Oi-2R; Fri, 12 Jul 2019 12:06:12 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hluJN-0004Nm-Vy
 for openwrt-devel@lists.openwrt.org; Fri, 12 Jul 2019 12:06:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id t28so9093000lje.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 12 Jul 2019 05:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5FSm90PXW9iWM8x2qh/cJoC3/zp3/FNSNs0j2ta8ZkQ=;
 b=iNPYoM1kHWcwEecJRsO+R2UUhkwLDCsgHdk0uDl0Mnk6Kf16fyh5c7d1RMCDT7EmHQ
 Ewl3oL/IJQifZDgIWqTpuuqXLSFu+JftoLtFsVsOKH20upRcvrvD4pxRWhf1yqg6IIrD
 ChtOLs8OB46CnGgZ+UI/sokFYYZPBJL2DQLnByKJ/RYgsGvNLsjjN2toih9pQFeIb22q
 FcMY5/imEufbMl6n3AMhdIheBZlK4apEVN/llUS06EOHogI2TWEfjrbWZyQhXFx+0gLP
 ElNGbtXHyXvXunHXJPC8Un+gzolZH4yCPFFj/71Vz+eFCD+PO6bReyJP0BcBrKkA3kgY
 u1AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5FSm90PXW9iWM8x2qh/cJoC3/zp3/FNSNs0j2ta8ZkQ=;
 b=H6BWaCTzrD0LXOkeZQmo7M/ALulzX2HAJuvPjnfLKH0IBlor2UEQLVDb9+eQSHKIIu
 Z32GUShJmAhsFXI29VcIBauLA9qZ7xJ/qd4dwzz8lKsAGmwButx/U49JYQsV+xjDOyTY
 DSK0JaVPZQYKCWJD1N/c7MsDMVtfCGgF1kacRZtk1VfAvJfDbfRZODp6jkqkVREI63Wc
 7PkRfibbiSN2SNaKAHfWPjOMV1+BSf7WWaB8HuqosItyZlQuNGtmvmF/iIbcgKRRIb6c
 lA/KnhOzYKmZeQ9qBwvL3PvhywBkOHvGdkq6JShpc7PyXZ6gQ5ly4MSziGINF6iY+pcK
 40Ww==
X-Gm-Message-State: APjAAAVkg/Nah27OLWTpGoQFJxFukt33+5+xTUgW2cnwtfOMA4NUYvOA
 Bg9Ym24zopqPjwbR2BvYjnanZ7Pt
X-Google-Smtp-Source: APXvYqygzNk6NlMSgSAJ/aQ0eNLHKML49N3jApVY3Y7rzU465rnomCf0gI3g4Ab1DlHuRB9EBFg3Cw==
X-Received: by 2002:a2e:94cb:: with SMTP id r11mr5495806ljh.212.1562933159251; 
 Fri, 12 Jul 2019 05:05:59 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.gmail.com with ESMTPSA id 20sm1432831ljf.21.2019.07.12.05.05.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 05:05:58 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 12 Jul 2019 14:05:47 +0200
Message-Id: <20190712120549.27778-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_050602_034825_5031C2EF 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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
Subject: [OpenWrt-Devel] [PATCH 1/3] ar71xx: get rid of
 platform_pre_upgrade()
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
cyBzd2l0Y2hpbmcgdG8gcmFtZGlzay4gSXQgc2hvdWxkIGJlIGZpbmUgdG8gIm10ZCBlcmFzZSBm
aXJtd2FyZSIgZnJvbQp0aGUgbGF0ZXIgY2FsbGJhY2sgYW5kIGdldCByaWQgb2YgdGhlIGZpcnN0
IG9uZS4KClNpZ25lZC1vZmYtYnk6IFJhZmHFgiBNacWCZWNraSA8cmFmYWxAbWlsZWNraS5wbD4K
LS0tCiAuLi4vYXI3MXh4L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUvcGxhdGZvcm0uc2ggfCA1MCAr
KysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKSwgMjcg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2FyNzF4eC9iYXNlLWZpbGVz
L2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoIGIvdGFyZ2V0L2xpbnV4L2FyNzF4eC9iYXNlLWZpbGVz
L2xpYi91cGdyYWRlL3BsYXRmb3JtLnNoCmluZGV4IGQwNjkwZGJhZjQuLmMwZjM4M2I0ZTMgMTAw
NzU1Ci0tLSBhL3RhcmdldC9saW51eC9hcjcxeHgvYmFzZS1maWxlcy9saWIvdXBncmFkZS9wbGF0
Zm9ybS5zaAorKysgYi90YXJnZXQvbGludXgvYXI3MXh4L2Jhc2UtZmlsZXMvbGliL3VwZ3JhZGUv
cGxhdGZvcm0uc2gKQEAgLTc0NiwzMyArNzQ2LDYgQEAgcGxhdGZvcm1fY2hlY2tfaW1hZ2UoKSB7
CiAJcmV0dXJuIDEKIH0KIAotcGxhdGZvcm1fcHJlX3VwZ3JhZGUoKSB7Ci0JbG9jYWwgYm9hcmQ9
JChib2FyZF9uYW1lKQotCi0JY2FzZSAiJGJvYXJkIiBpbgotCXJiLTc1MC1yMnxcCi0JcmItNzUw
cC1wYnIyfFwKLQlyYi03NTB1cC1yMnxcCi0JcmItOTExLTJobnxcCi0JcmItOTExLTVobnxcCi0J
cmItOTMxLTJuZHxcCi0JcmItOTQxLTJuZHxcCi0JcmItOTUxdWktMm5kfFwKLQlyYi05NTJ1aS01
YWMybmR8XAotCXJiLTk2MnVpZ3MtNWhhY3QyaG50fFwKLQlyYi1saGctNW5kfFwKLQlyYi1tYXAt
Mm5kfFwKLQlyYi1tYXBsLTJuZHxcCi0JcmItc3h0LTJuZC1yM3xcCi0JcmItd2FwLTJuZHxcCi0J
cmItd2FwZy01aGFjdDJobmR8XAotCXJiLXdhcHItMm5kKQotCQkjIGVyYXNlIGZpcm13YXJlIGlm
IGJvb3RlZCBmcm9tIGluaXRyYW1mcwotCQlbIC16ICIkKHJvb3Rmc190eXBlKSIgXSAmJiBtdGQg
ZXJhc2UgZmlybXdhcmUKLQkJOzsKLQllc2FjCi19Ci0KIHBsYXRmb3JtX25hbmRfcHJlX3VwZ3Jh
ZGUoKSB7CiAJbG9jYWwgYm9hcmQ9JChib2FyZF9uYW1lKQogCkBAIC04MDgsNiArNzgxLDI5IEBA
IHBsYXRmb3JtX25hbmRfcHJlX3VwZ3JhZGUoKSB7CiBwbGF0Zm9ybV9kb191cGdyYWRlKCkgewog
CWxvY2FsIGJvYXJkPSQoYm9hcmRfbmFtZSkKIAorCWNhc2UgIiRib2FyZCIgaW4KKwlyYi03NTAt
cjJ8XAorCXJiLTc1MHAtcGJyMnxcCisJcmItNzUwdXAtcjJ8XAorCXJiLTkxMS0yaG58XAorCXJi
LTkxMS01aG58XAorCXJiLTkzMS0ybmR8XAorCXJiLTk0MS0ybmR8XAorCXJiLTk1MXVpLTJuZHxc
CisJcmItOTUydWktNWFjMm5kfFwKKwlyYi05NjJ1aWdzLTVoYWN0MmhudHxcCisJcmItbGhnLTVu
ZHxcCisJcmItbWFwLTJuZHxcCisJcmItbWFwbC0ybmR8XAorCXJiLXN4dC0ybmQtcjN8XAorCXJi
LXdhcC0ybmR8XAorCXJiLXdhcGctNWhhY3QyaG5kfFwKKwlyYi13YXByLTJuZCkKKwkJIyBlcmFz
ZSBmaXJtd2FyZSBpZiBib290ZWQgZnJvbSBpbml0cmFtZnMKKwkJWyAteiAiJChyb290ZnNfdHlw
ZSkiIF0gJiYgbXRkIGVyYXNlIGZpcm13YXJlCisJCTs7CisJZXNhYworCiAJY2FzZSAiJGJvYXJk
IiBpbgogCWFsbDAyNThuKQogCQlwbGF0Zm9ybV9kb191cGdyYWRlX2FsbG5ldCAiMHg5ZjA1MDAw
MCIgIiRBUkdWIgotLSAKMi4yMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
